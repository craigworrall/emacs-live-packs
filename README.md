
# emacs-live Custom Configuration

## emacs-live

An emacs starter kit. 

## Usage

Ensure the ~/.live-packs directory exists, and contains craig-pack and any other required packs. In ```~/.emacs-live.el```, load the packs.
```
$ cat ~/.emacs-live.el 
(live-add-packs '(~/.live-packs/craig-pack))
```

