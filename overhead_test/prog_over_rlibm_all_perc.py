import matplotlib
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42

overallLabel = ["ln", "log2", "log10", "exp", "exp2", "exp10", "sinpi", "cospi", "cosh", "sinh", "avg."]

labels = overallLabel
producebf16 = [1.59586502228499,1.61027220471481,1.49786074713481,1.06569784474513,1.07443455571683,1.05233753610697,1.26707277537425,1.15845172139345,1.03948414752208,1.27343202818984,1.24589348469025]
producetf32 = [1.25597315177272,1.22842130694429,1.26358566300025,1.05724577078938,1.05363254487798,1.04340947057882,1.24339630825439,1.14776513601521,1.02896476900751,1.27150706481935,1.15516339344788]
producefloat = [1.11097999778804,1.0011322031631,1.01883336256774,1.04652493622013,1.0108013860253,1.02199954085009,1.08359121702933,1.04861395187186,1.02423844527838,1.10987023465496,1.04696492538272]

producebf16 = [(x - 1.0) * 100.0 for x in producebf16]
producetf32 = [(x - 1.0) * 100.0 for x in producetf32]
producefloat = [(x - 1.0) * 100.0 for x in producefloat]

x = np.arange(len(labels))  # the label locations
width = 0.25  # the width of the bars

fig, ax = plt.subplots()
ax.set_ylim(0, 65)
ax.axhline(20, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(40, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(60, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
rects1 = ax.bar(x - width, producebf16, width, label='Bfloat16', zorder = 100)
rects2 = ax.bar(x, producetf32, width, label='Tensorfloat32', zorder = 100)
rects3 = ax.bar(x + width, producefloat, width, label='Float', zorder = 100)

def autolabel(rects):
    """Attach a text label above each bar in *rects*, displaying its height."""
    for rect in rects:
        height = rect.get_height()
        print(height)
        if height > 65:
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
ax.set_ylim(0, 80)
ax.set_yticks([0, 20, 40, 60, 80])
ax.legend(bbox_to_anchor=(-0.1, 0.98, 1.1, 0.2), loc="lower left", mode="expand", ncol=3)
ax.yaxis.set_major_formatter('{x:3.0f}%')

fig.tight_layout()

plt.gcf().set_size_inches(5, 1.4)
plt.savefig('prog_over_rlibm_all_perc.pdf', bbox_inches='tight', pad_inches = -0.001)
