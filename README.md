### About
[Aliases](https://github.com/yantonov/gw-aliases/blob/master/config.toml) for [gw](https://github.com/gdubw/gng) tool.  
Mainly it's for [Criteo](https://github.com/criteo) build system to simplify cross repo reviews.  

### Installation
1. Define the environment variable GW_HOME which points to the directory which contains gw tool.
(it is needed to use wrapper command which is available only for gng script)
2. clone and add this repository to the front of PATH
3. use 
```bash
    install.sh
```
script that downloads latest [alias](http://github.com/yantonov/alias) distribution for the current operating system names it in appropriate way and puts to the current directory  

Alternatively, you can:  
a) build [alias](http://github.com/yantonov/alias) manually (or use the available distribution)  
b) name it as `gw` and put it into this repository (binary file has already ignored inside this repository)  

### Usage
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
