import matplotlib
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np
import os

matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42

labels = ["ln", "log2", "log10", "exp", "exp2", "exp10", "sinpi", "cospi", "cosh", "sinh", "avg."]

elemental_files = ["log.txt", "log2.txt", "log10.txt", "exp.txt", "exp2.txt", "exp10.txt", "sinpi.txt", "cospi.txt", "cosh.txt", "sinh.txt"]
prog_bf16_files = [os.path.join("glibc_proglibm", "bf16", f) for f in elemental_files]
prog_tf32_files = [os.path.join("glibc_proglibm", "tf32", f) for f in elemental_files]
prog_rno_files = [os.path.join("glibc_proglibm", "rno", f) for f in elemental_files]
glibc_bf16_files = [os.path.join("rlibmall", "bf16", f) for f in elemental_files]
glibc_tf32_files = [os.path.join("rlibmall", "tf32", f) for f in elemental_files]
glibc_rno_files = [os.path.join("rlibmall", "rno", f) for f in elemental_files]

producebf16 = []
producetf32 = []
producefloat = []

def readnumbers(files) :
    result = []
    for f in files :
        with open(f) as fo :
            result.append(float(fo.readline().strip()))
    result.append(sum(result) / len(result))
    return result

prog_bf16 = readnumbers(prog_bf16_files)
prog_tf32 = readnumbers(prog_tf32_files)
prog_float = readnumbers(prog_rno_files)
glibc_bf16 = readnumbers(glibc_bf16_files)
glibc_tf32 = readnumbers(glibc_tf32_files)
glibc_float = readnumbers(glibc_rno_files)

producebf16 = (x / y for x, y in zip(glibc_bf16, prog_bf16))
producetf32 = (x / y for x, y in zip(glibc_tf32, prog_tf32))
producefloat = (x / y for x, y in zip(glibc_float, prog_float))

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
        if height > 65:
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
