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

- if you repeate ir just adds the content 

- the file doesn't have to exist; it will be created during the process

```$ pwd >> SOMS.txt ``` = it redirect the output in the file and it doesn't rewrite the file 

- if you repeate it just adds the content 

- the file doesn't have to exist; it will be created during the process

```$ ls -l > contents.txt```
<br/>
<br/> 

## Cat
- concatenate 

```$ cat file.txt ``` = print out the whole content of the file 

```$ cat white.txt yellow.tx ```= print out the whole content of the multiple files 

```$ cat food_list.txt fruit.txt vegetables.txt > everything.txt ``` = put the content of the 3 files into one 

```$ cat -n everything.txt ``` = show the content of the file with numbered lines 
<br/>
<br/> 

## Less
```$ less song.txt ``` = better than cat 

- /green = searches for green in the file 

- Enter + b = scroll back up 

- q = to exit the file
<br/> 

## Echo
```$ echo "hello" ``` = prints hello 

```$ echo "USERNAME=JACK" >> config.txt ``` = adds echo output to the config.txt
<br/>
<br/> 

## Wc
- give us useful information about the file or input it receives via pipes 

```$ wc song.txt ``` = print new lines; words; characters; byte 

```$ wc -l song.txt ``` = print only lines 

```$ wc -c song.txt ``` = print chars only 

```$ wc -w song.txt ``` = print words only 

## Piping
```$ ls -l | wc ``` = print result for ls -l ; begging of piping 


```$ cat beens.txt salat.txt | wc ```

```$ cat groceries.txt bucher | wc -l > number.txt ``` = put the number in of lines into file
<br/>
<br/> 

## Sort
```$ sort food.txt ``` = print sorted content by alphanet 

```$ sort food.txt > sorted_food.txt ``` = put the sorted food output to file 

```$ sort nums.txt ``` = sort numbers by number at the begging 

```$ sort -n nums.txt ``` = numeric; sort numbers how big they are 

```$ sort -rn nums.txt ``` = reverse numeric; sort numbers how big they are 

```$ sort -nu nums.txt ``` = unique numeric; sort numbers how big they are and don't take same numbers twice 

```$ cat food.txt fruit.txt | sort ``` = sorting the output of cat 

```$ sort -nu nums.txt | wc -l ``` = unique numeric; returns the number of unique number in nums.txt
<br/>
<br/> 

## Uniq
- report or omit repeated lines 

```$ uniq vegetables.txt ``` = don't allow to same values to be next to each other 

```$ sort food.txt | uniq ``` = print out uniq values of food.txt 

```$ sort -d food.txt  | uniq -d``` = print only duplicated lines, one for each group 

```$ sort -d food.txt  | uniq -u``` = print only non-duplicated lines, one for each group 

```$ sort -d food.txt  | uniq -c``` = count; how many times is the value at the file 

```$ sort -d food.txt  | uniq -c | sort -nr``` = count and sort the output by the most used
<br/>
<br/> 

## Expansions
```$ echo $PATH ``` = print the expanded value of this variable 

```$ echo *  ``` = print every folder, file in this dir 

```$ echo *.txt ``` = print every file that ends with .txt 

```$ ls -l *.txt ``` = print every file with eding on .txt in this dir 

``` ? ``` = match single character 

```$ echo *.??? ``` = print anything that ends with 3 char 

```$ rm *.?? ``` = remove everything that ends with 2 char 

```$ echo {a, b, c}.txt ``` = print every combination of a.txt b.txt .etc 

```$ touch app.{js, py, html, css} ``` = make new file for every combination 

```$ ls app.?? ``` = list the app with ending char 

```$ echo {1..99}``` = print the numbers between 1 and 99 

- with the ?, * you can mv, cp, rm etc.
<br/>

##  Diff
- ```diff ``` id a handy command. Suppose you have 2 files, which contain almost the same information and you can't find the difference between the two. 

- ```diff ``` will process the files and tell whatis the difference. 

```$ diff file1.txt file2.txt ``` = print the difference between the two (and where is it)
- ``` < ``` would mean that the diff is in the file1 

```$ diff -y first.txt second.txt ``` = will compare the files liny by line 

```$ diff -u first.txt second.txt ``` = git version control; show the diff
<br/>
<br/> 

## Find
- The ```find ``` command can be used to find files or folders matching a particular patern. It searches recursively 

```$ find . -name '*.js'  ``` = find everything  that ends with .js 

```$ diff . -name '7' ``` = find everything that includes 7 

```$ find . -type d ``` = find every dir 

```$ find . -type f ``` = find every file 

```$ find . -type d -iname f 'E' ``` = find every folder that includes e or E 

```$ find . -type f  -size +100k ``` = find file in the dir that have +100 kilobits 

```$ find . -type f -size +100k -exec ls -l {} /:``` = 
will use the results from the command and use that for ls -l
