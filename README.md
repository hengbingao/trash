# clean
To avoid to delet files occassionaly with rm -r 

![trash files](https://github.com/hengbingao/trash/blob/main/png/clean.png)



## **Install**

1. Clone the repository:

    ```bash
    git clone https://github.com/hengbingao/trash.git
    ```

2. Set the executable permissions:

    ```bash
    chmod +x $trash/bin/*
    chmod +x $trash/src/*
    ```

3. Add to environment:

    ```bash
    echo 'export PATH=$PATH:$trash/bin' >> ~/.bashrc
    source ~/.bashrc
    ```
## **Usage**


1. Build trash files:

    ```bash
    mkdir -p $MYGROUP/trash 
    ```

2. Move files to trash:

    ```bash
    clean go files
    ```
3. Restore files from trash:

    ```bash
    clean back files
    ```
4. Clean trash forever:

    ```bash
    clean bin  
    ```
