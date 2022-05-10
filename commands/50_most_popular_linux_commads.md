# The 50 Most Popular Linux & Terminal Commands
<br/>

## Clear
```$ clear -x ``` = clear the screen with the scroller 
<br/>
<br/>

## Ls
```$ ls bin/ ``` = you can see files from other directories

```$ ls -l ``` = show user rigjts for the file

```$ ls -all ``` = show ignored files

```$ ls -al ``` = ls -l and ls -all together 
<br/>
<br/>

## Cd
```$ cd ../../.. ``` = go three directories back 

```$ cd / ``` = move you to root path 
<br/>
<br/>

## Mkdir
```$ mkdir summer/seeds ``` = create a floder seeds inside the summer folder outside the summer dir

```$ mkdir -p fuits/apples ``` = create nested dir with the -p

```$ mkdir ~/blah ``` = create floder in home dir
<br/>
<br/>

## Rmdir
```$ rmdir cats ``` = remove empty cat dir

```$ rmdir cats dogs ``` = remove multiple dir 
<br/>
<br/>

## Rm
```$ rm -v cat ``` = verbose explain what happened

```$ rm -r seeds ``` = recursive deleting; can delete nested folders

```$ rm -ri seeds ``` = ask you if you want to see what is inside the folder 
<br/>
<br/>

## Open
```$ {vim | nvim | xdg-open} . ``` = open whole directory

```$ xdg-open purple.txt ``` = open specific file 
<br/>
<br/>

## Mv
```$ mv pear.txt new_pear.txt ``` = rename the file pear.txt to new_peer.txt

```$ mv flower.txt stuff/ ```= move the file in the dir

```$ mv stuff/ ../ ```= move the dir to dir before 
<br/>
<br/>

## Cp
```$ cp file.txt copy.txt ``` = copy the file to other file

```$ cp -r STUFF STUFF COPY ``` = recursive; copy one dir to multiple
<br/>
<br/>

## Head
- the beginning of file (10 lines by default)
- use it if you have really large file

```$ head colors.txt ``` = print out the first ten lines

```$ head colors.txt -n 100``` = lines; prints out first 100 lines 
<br/>
<br/>

## Tail
- the end of file

```$ tail colors.txt ``` = print out the last 10 lines

```$ tail colors.txt -n 20 ``` = print out the last 20 lines

```$ tail -f /var/log/system.log ``` = print out the end of the file with live updating (constant changing) 
<br/>
<br/>

## Date 
```$ date ``` = print out the current date 
<br/>
<br/>

## Redirecting standard output
```$ date > today.txt ``` = don't show the output in terminal but instead it redirect the output to the file today.txt

- but if we repeat the commd again it will replace the content of the file with the new date
<br/>
<br/>
