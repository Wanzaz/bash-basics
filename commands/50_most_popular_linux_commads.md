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
<br/> 
<br/> 

## Grep
- You can use the 

```$ grep green song.txt ```  = search for "green" in the song file and print out the matches 

```$ grep -n green song.txt  ``` = print out the matches with numbered lines 

```$ grep -nC 2 green song.txt  ``` = print out 2 lines after and before the match 

```$ grep -r "chicken" .  ``` = recursive; search for chicken recursively (case sensitive)
<br/>
<br/> 

## Du
- The command ```du ``` will calculate the size of a dir as whole 

```$ du ``` = calculate the dir size 

```$ du Pokemon  ``` = calculate the size of dir in dir Pokemon 

```$ du -m  ``` = show the size of a dir in megabytes 

```$ du -mh  ``` = readable for human 

```$ du -h | sort -h ``` = sort the dir sizes 

```$ du -h | sort -h | tail ``` = show the 10 largest dir 

```$ du -h | sort -hr | head ``` = show the 10 largest dir
<br/>
<br/> 

## Df
- The ```df ``` command is used to get disk usage information 

```$ df ``` = disk usage information 

```$ df -h ``` = human; disk usage information in human format 

```$ df -h Desktop ``` = Desktop disk usage information 
<br/>
<br/> 

## History 
- Every time we run a command that's memorized in the history. 

```$ history ``` = show all commands you used and line number 

```$ !2064 ``` = run the command in history 

```$ history | less ``` = better view of output 

```$ history | greb "cook" ``` = 
<br/>
<br/> 

## Ps
- Your computer is running at all times different processes. 

- You can inspect them all using the ```ps ``` commmand: 

```$ ps ``` = process status 

```$ ps ax ```
<br/>
<br/> 

## Top
- The ```top ``` command is used to display real-time information about running processes in the system 

```$ top ```
<br/>
<br/> 

## Kill
- Linux processes can receive a variety of signals and react to them 

- The ```kill ``` program send a variety of signals to a program 

- It's not just to terminate a program, like we would suggest, but that's its main job. 

```$ kill -l ``` = list different signals 

```$ kill 112768 ``` = don't kill the process 

```$ kill -KILL 112768 ``` = instead of KILL you can use the 9; to kill the process
<br/>
<br/> 

## Killall
- The ``killall ``` command kills more than one process with normal process name and not PID 

```$ killall -9 node ``` = kill all files with node
<br/>
<br/>


## Jobs
```$ find / -ctime -l > all_changes.txt ```

- CTRL + C = suspend the process 

- CTRL + Z = stop the process 

```$ jobs ``` = show which commads were stopped, suspended and etc. 

```$ sleep 50 & ``` = & means the command run in the background (then you can use the ```fg ``` command to run it normally)
<br/>
<br/> 

### Bg
```$ bg ``` = runs the 1. command in jobs in background 
<br/>
<br/> 

### Fg
```$ fg 2 ``` = rerun the 2. command in jobs output
<br/>
<br/> 

## Gzip
- Zip files individualy
```$ gzip all_changes.txt ``` = zip a file 

```$ gzip -d file_name.gz ``` = unzip a file 

```$ gzip -kv file_name.txt ``` = zip a file and tell you how many % of a file size were decreased 

```$ gzip file_name.txt one.txt two.txt ``` = zip the 3 files but individualy
<br/>
<br/> 

## Gunzip
```$ gunzip file_name.hz ``` = unzip a file 

```$ gzip -d file_name.txt ``` = unzi
<br/>
<br/>

## Tar
```$ tar -cf archive.tar file1.txt file2.txt ``` = create an archive of 2 files 

```$ tar -xf archive.tar ``` = extract files from archive 

```$ tar -tf archive.tar ``` = list the files that are in archive 

```$ tar -czf archive.tar file1.txt file2.txt ``` = create new archive and also keep the files
<br/>
<br/> 

## Nano
- ```nano ``` is beginner friendly editor 

- CTRL + X = exit the editor 

- CTRL + S = save 

- CTRL + K = cut line 

- CTRL + U = paste line 

```$ nano bee.txt ``` = open file in nano editor
<br/>
<br/> 

## Alias
```$ alias myls='ls -la'``` = create shorcut of ls -la command to myls 

```$ alias ``` = list all my alias 

```$ alias pscpu10='ps auxf | sort -nr -k 3 | head -10 ``` = show  top 10 demanding processes on cpu 

```$ nvim .bashrc ``` = configure alias in this file 

```$ source .bashrc ``` = to be able to use the alias without booting 

```$ nvim .zsrhc ```

