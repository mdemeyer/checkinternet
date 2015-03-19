# README
---------
Short function to dowload internet status reports from istheinternetonfire.com

Original idea by reddit user jooiiee

## Installation
-----------
Source the shell file from .bashrc (or similar file for your shell)
```
. checkinternet.sh
```

Or add it to a global functions file
```
cat checkinternet.sh >> $HOME/.functions
```

You need to have cowsay installed to use the '-fun' argument.

## Usage
----------
Run the function manually:
`checkinternet`

Run with cowsay:
`checkinternet -fun`
Use '-fun' for the default moose or pipe to your prefered animal
```
checkinternet | cowsay -n -f bud-frogs
```

Run when starting your first terminal session.
```
# is the internet on fire status reports
if [ -z "$INTERNETONFIRE" ] ; then
    checkinternet -fun
fi
```

## Example output
----------
```
 ____________________________________________________________ 
/ Internet status:                                           \
|                                                            |
| Getting FREAKy.                                            |
|                                                            |
| http://is.gd/5UfDHE XSAs 119-123 (still embargoed).        |
|                                                            |
| Forced reboots:                                            |
| https://aws.amazon.com/premiumsupport/maintenance-2015-03/ |
| https://community.rackspace.com/general/f/53/t/4978        |
\ http://status.linode.com/incidents/2dyvn29ds5mz            /
 ------------------------------------------------------------ 
  \
   \   \_\_    _/_/
    \      \__/
           (@@)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

