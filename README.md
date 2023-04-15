Aliases for [gw](https://github.com/gdubw/gng) tool.  
Mainly it's for [Criteo](https://github.com/criteo) build system to simplify cross repo reviews.  

Usage:
1. Define the environment variable GW_HOME which points to the directory which contains gw tool.
(it is needed to use wrapper command which is available only for gng script)
2. Add this repository to PATH.
3. Build [alias](https://github.com/yantonov/alias) artifact (or use the available distribution),  
name it as gw and place into this repository 
(binary 'gw' file has already ignored inside this repository, it is needed to invoke gw commands).

After that, for example, you can use execute git commands across multiple repository like this:
(assumed that the corresponding plugin is being used)

```
gw git branch
```
It is much simpler than, for example:
```
gw exec --threads=1 --cmd='git branch'
```


For the git commands number of threads is equal to one, just to synchronize output for multiple repositories.

Also, you can add your custom commands, see [documentation](https://github.com/yantonov/alias#about-overriding-configuration) for the alias tool.
