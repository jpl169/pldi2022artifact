import matplotlib
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42

overallLabel = ["ln", "log2", "log10", "exp", "sinpi", "cospi", "cosh", "sinh", "avg."]

labels = overallLabel
producebf16 = [1.67918667523887,3.67046782673387,3.3283413390626,2.0473430353463,2.33254549918587,3.0407754180216,1.52847432610141,1.3456669976736,2.2305200779018]
producetf32 = [1.32354489752812,2.80300876386262,2.80616644876436,2.03873198952001,2.30862975380475,3.11596099371242,1.52366408199456,1.33567132918949,2.04902132920634]
producefloat = [1.15315445450309,2.2550890761259,2.2335418172451,2.0167077210005,2.11737395097216,3.34775915166201,1.42228232135021,1.16163647798577,1.84995858948873]

producebf16 = [(x - 1.0) * 100.0 for x in producebf16]
producetf32 = [(x - 1.0) * 100.0 for x in producetf32]
producefloat = [(x - 1.0) * 100.0 for x in producefloat]

x = np.arange(len(labels))  # the label locations
width = 0.25  # the width of the bars

fig, ax = plt.subplots()

ax.axhline(50, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(100, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(150, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(200, color="gray", ls = '--', linewidth = 0.5, zorder = 0)
ax.axhline(250, color="gray", ls = '--', linewidth = 0.5, zorder = 0)


rects1 = ax.bar(x - width, producebf16, width, label='Bfloat16', zorder = 100)
rects2 = ax.bar(x, producetf32, width, label='Tensorfloat32', zorder = 100)
rects3 = ax.bar(x + width, producefloat, width, label='Float', zorder = 100)

def autolabel(rects):
    """Attach a text label above each bar in *rects*, displaying its height."""
    for rect in rects:
        height = rect.get_height()
        print(height)
        if height > 275:
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
ax.set_ylim(0, 300)
ax.set_yticks([0, 50, 100, 150, 200, 250, 300])
ax.legend(bbox_to_anchor=(-0.1, 0.98, 1.1, 0.2), loc="lower left", mode="expand", ncol=3)
ax.yaxis.set_major_formatter('{x:3.0f}%')

fig.tight_layout()

plt.gcf().set_size_inches(5, 1.4)
plt.savefig('prog_over_crlibm_perc.pdf', bbox_inches='tight', pad_inches = -0.001)
