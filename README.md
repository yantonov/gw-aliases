Aliases for [gw](https://github.com/gdubw/gdub/blob/master/bin/gw) tool.

Usage:
1. Define environment variable GW_HOME which points to the directory which contains gw tool.
2. Add this repository to PATH.
3. Build [alias](https://github.com/yantonov/alias) artifact (or use the available distribution),  
name it as gw and place into this repository 
(binary 'gw' file has already ignored inside this repository, it is needed to invoke gw commands).

After that, for example, you can use execute git commands across multiple repository using this:
(assumed that corresponding plugin is being used)

```
gw git branch
```
This is much simpler than, for example:
```
gw exec --threads=1 --cmd='git branch'
```


For the git commands number of threads is equal to one, just to synchronize output for multiple repositories.
