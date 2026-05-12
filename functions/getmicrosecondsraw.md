# getmicrosecondsraw

Gets raw system microseconds; used for profiling, only gives lower 32 bits as script doesn't support uint64_t properly right now

Example:
```c++
start_time = GetMicrosecondsRaw()
```

