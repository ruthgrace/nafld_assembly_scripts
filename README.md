# NAFLD metagenomic assembly scripts

These scripts are specific to a project using Illumina HiSeq data.

## Installing Trinity

You can install Trinity using the official instructions found [here](https://github.com/trinityrnaseq/trinityrnaseq/wiki/Installing%20Trinity).

I initially tried to install Trinity on a Mac machine, but gave up.

## Running Trinity

```
nohup ./run_trinity.sh /Volumes/data/ruth/nafld_assembly/reads > run_trinity_nohup.out 2>&1&
```

