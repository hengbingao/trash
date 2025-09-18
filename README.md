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


1. build trash files:

    ```bash
    mkdir -p $MYGROUP/trash 
    ```

2. move files to trash:

    ```bash
    clean go Move specified files to $MYGROUP/trash 
    ```
3. Restore files from trash:

    ```bash
    clean back Restore files under $MYGROUP/trash 
    ```
4. clean bin:

    ```bash
    clean bin Clean all files under $MYGROUP/trash 
    ```
