# ThreadPool using Ruby

## Introduction

This is a very basic implementation of ThreadPool using Ruby. Please see the [original blog post by Jacob Burkhart](https://www.engineyard.com/blog/ruby-thread-pool). I just made a little modification to execute a block with the threadpool.

## Running

```
$ chmod +x ThreadPool.rb
$ ./ThreadPool.rb
$ ./ThreadPool.rb
Process: work1: BEGIN
Process: work2: BEGIN
Process: work4: BEGIN
Process: work3: BEGIN
Process: work2: END
Process: work4: END
Process: work6: BEGINProcess: work5: BEGIN
Process: work1: END
Process: work7: BEGIN
Process: work3: END

Process: work8: BEGIN
Process: work5: END
Process: work9: BEGIN
Process: work7: END
Process: work11: BEGIN
Process: work6: ENDProcess: work8: END

Process: work9: END
Process: work11: END
```

