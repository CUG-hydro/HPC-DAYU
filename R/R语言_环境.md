
<h1>如何使用R语言</h1>

## 1. 路径配置
```bash
subl ~/.bashrc # or subl ~/.zshrc
export PATH="/share/opt/.conda/envs/r-4.2/bin:/share/home/kong/.local/bin:$PATH"
# 重新登录
radian
```

## 2. bsub提交任务

<https://gitlab.com/CUG-hydro/bsub_for_r/-/blob/master/rbsub_01.sh>

```bash
# bsub_01.sh
source /etc/profile.d/modules.sh

## 加载模块
# module load gcc/9.3.0
# module load netcdf-c/4.7.4-gcc930
export PATH="/share/opt/.conda/envs/r-4.2/bin:$PATH"
# ~/.profile works
# /share/opt/R/4.1.0/bin/R --file "~/github/bsub/hello.R"

Rscript hello.R
```
