# Google Colab

## Create a new notebook

<img src="../img/2025-05-14-14-41-39.png" width="600" alt="Create a new notebook"/>

## Setup R runtime

<img src="../img/2025-05-14-14-42-29.png" width="600" alt="Setup R runtime"/>

## gdown

A system command that can import Google drive files into the Colab environment. The command is as follows:

Install gdown:
```r
system("pip install -q gdown")
```

Usage:
```r
system("gdown --id <file_id>")
```

Be aware of file sharing permission settings. 

<img src="../img/2025-05-14-14-58-33.png" width="450">