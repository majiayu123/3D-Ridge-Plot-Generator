# 3D 山岭图生成器 (3D Ridge Plot Generator)

交互式 3D 山岭图（山脊图）生成工具，适用于 Meta 分析、系统评价等医学研究数据可视化。

## ✨ 功能

- **命令行 + 网页版**：Python CLI 可批量生成，浏览器可直接使用
- **CSV / Excel 数据导入**：自动识别列名（中英文兼容）
- **7 种配色方案**：Forest、Ocean、Sunset、Glacier、Lava、Aurora、Golden
- **交互式 3D 图**：拖拽旋转、滚轮缩放、右键平移、悬停查看详情
- **高斯山脊叠加**：权重越大山峰越高，CI 范围决定山体宽度
- **分组颜色标注**：不同亚组自动分色
- **一键导出 HTML**：独立 HTML 文件，可直接用于论文/展示

## 📊 示例效果

![3D Ridge Plot](mPAP_3D山岭图.html)

## 🚀 快速开始

### 方式 1：浏览器直接使用
双击 `index.html`，粘贴 CSV 数据即可生成。

### 方式 2：一键批处理
双击 `一键生成.bat`，选择菜单操作。

### 方式 3：Python 命令行
```bash
pip install numpy plotly openpyxl

# 使用内置示例数据
python ridge3d.py 示例数据_mPAP.csv

# 自定义数据
python ridge3d.py data.csv -t "标题" -a "署名" -c ocean
```

## 📁 文件说明

| 文件 | 说明 |
|------|------|
| `ridge3d.py` | Python 引擎（命令行） |
| `index.html` | 网页版工具（浏览器） |
| `一键生成.bat` | Windows 批处理启动器 |
| `示例数据_mPAP.csv` | 示例数据（mPAP Meta分析） |
| `使用说明.txt` | 中文使用手册 |

## 📋 数据格式

```csv
name,value,ci_low,ci_high,weight,group
研究A,0.5,0.2,0.8,25.0,亚组1
研究B,0.3,-0.1,0.7,30.0,亚组2
```

列名自动识别（中英文）：name / value / ci_low / ci_high / weight / group

## 🎨 配色方案

| 方案 | 描述 |
|------|------|
| `golden` | 金黄 → 蓝色（默认） |
| `forest` | 深绿 → 天蓝 |
| `ocean` | 深海 → 亮蓝 |
| `sunset` | 暗红 → 金黄 |
| `glacier` | 深紫 → 冰白 |
| `lava` | 黑 → 熔岩金 |
| `aurora` | 暗夜 → 极光绿 |

## 🔧 命令行参数

```
-t, --title       图表标题
--subtitle        副标题
-a, --author      署名
-c, --colorscheme 配色方案
-o, --output      输出文件路径
--xlabel          X轴标签
--ylabel          Y轴标签
--sheet           Excel工作表名
--list-colors     列出所有配色
```

## 📝 作者

马佳宇 (Majiayu)

## 📄 许可证

MIT License
