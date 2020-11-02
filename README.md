# Setup Local Redis Develop Environment.


## Error 

make test

発生したエラー。
```
cd src && /Applications/Xcode.app/Contents/Developer/usr/bin/make test
pyenv: tclsh8.6: command not found

The `tclsh8.6' command exists in these Python versions:
  anaconda3-5.2.0

Note: See 'pyenv help global' for tips on allowing both
      python2 and python3 to be found.
make[1]: *** [test] Error 127
make: *** [test] Error 2

~/g/s/g/y/local-redis-development/redis-6.0.9 on 🔀 master [✘+?]
❯ pyenv help global
Usage: pyenv global <version> <version2> <..>

Sets the global Python version(s). You can override the global version at
any time by setting a directory-specific version with `pyenv local'
or by setting the `PYENV_VERSION' environment variable.

<version> can be specified multiple times and should be a version
tag known to pyenv.  The special version string `system' will use
your default system Python.  Run `pyenv versions' for a list of
available Python versions.

Example: To enable the python2.7 and python3.7 shims to find their
         respective executables you could set both versions with:

'pyenv global 3.7.0 2.7.15'
```


対応。
```
$ pyenv local anaconda3-5.2.0
(cd redis-6.0.9 && make test)
```

