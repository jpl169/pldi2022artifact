import matplotlib
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42

overallLabel = ["ln", "log2", "log10", "exp", "exp2", "exp10", "sinpi", "cospi", "cosh", "sinh", "avg."]

labels = overallLabel
producebf16 = [1.77231540231728,1.84101455610724,1.72972009842898,1.42904861689403,1.57364252184641,1.59789579721453,2.21978724113253,2.19710964625939,1.65982341095674,1.56237979890121,1.74144081450119]
producetf32 = [1.42726343947437,1.50965237632637,1.44352838213001,1.39891794429414,1.59766532874947,1.56336594137325,2.19746328734798,2.27013003974818,1.61235915097718,1.63591060850118,1.64260781245279]
producefloat = [1.31259615564839,1.08226591118015,1.26789313529268,1.44786371629951,1.49537015060802,1.52968668692985,1.93511856696202,1.9851731818639,1.6047414695904,1.4781047742439,1.4911601574922]

producebf16 = [(x - 1.0) * 100.0 for x in producebf16]
producetf32 = [(x - 1.0) * 100.0 for x in producetf32]
producefloat = [(x - 1.0) * 100.0 for x in producefloat]

x = np.arange(len(labels))  # the label locations
width = 0.25  # the width of the bars

fig, ax = plt.subplots()
ax.set_ylim(0, 130)
ax.axhline(25, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(50, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(75, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(100, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(125, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
rects1 = ax.bar(x - width, producebf16, width, label='Bfloat16', zorder = 100)
rects2 = ax.bar(x, producetf32, width, label='Tensorfloat32', zorder = 100)
rects3 = ax.bar(x + width, producefloat, width, label='Float', zorder = 100)

def autolabel(rects):
    """Attach a text label above each bar in *rects*, displaying its height."""
    for rect in rects:
        height = rect.get_height()
        print(height)
        if height > 230:
            print("It is")
            ax.annotate('{:.1f}x'.format(height),
                    xy=(rect.get_x() + rect.get_width() / 2, 2.5),
                    xytext=(0, 3),  # 3 points vertical offset
                    textcoords="offset points",
                    ha='center', va='bottom',
                    rotation="90",
                    fontsize = 7)

autolabel(rects1)
autolabel(rects2)
autolabel(rects3)

# Add some text for labels, title and custom x-axis tick labels, etc.
plt.xticks(rotation=15, ha="right", rotation_mode="anchor")
ax.set_ylabel('Speedup')
#ax.set_title('Performance speedup')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.set_ylim(0, 150)
ax.set_yticks([0, 25, 50, 75, 100, 125, 150])
ax.legend(bbox_to_anchor=(-0.1, 0.98, 1.1, 0.2), loc="lower left", mode="expand", ncol=3)
ax.yaxis.set_major_formatter('{x:3.0f}%')

fig.tight_layout()

plt.gcf().set_size_inches(5, 1.4)
plt.savefig('prog_over_intel_perc.pdf', bbox_inches='tight', pad_inches = -0.001)
