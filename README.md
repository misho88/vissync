# vissync
run `sync` and watch `/proc/meminfo` until done

Running `sync` can be slow because of dirty/unwritten data. Such data can be monitored via `/proc/meminfo`. To that end, `vissync` is a slightly cleaner version of this:

```
$ sync &
$ while kill -0 $!; do grep -E 'Dirty:|Writeback:' /proc/meminfo; sleep 1; done
```
