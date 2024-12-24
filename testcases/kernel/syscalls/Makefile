# SPDX-License-Identifier: GPL-2.0-or-later
#    testcases/kernel/syscalls Makefile.
#
#    Copyright (C) 2009, Cisco Systems Inc.
#
# Ngie Cooper, July 2009
#

top_srcdir		?= ../../..

include	$(top_srcdir)/include/mk/env_pre.mk

ifeq ($(UCLIBC),1)
FILTER_OUT_DIRS	+= profil
endif

# ifeq ($(ANDROID), 1)
FILTER_OUT_DIRS	+= \
	abort access acct add_key adjtimex alarm arch_prctl bpf brk cacheflush \
	cachestat capget capset chdir chmod chown chroot clock_adjtime clock_getres \
	clock_gettime clock_nanosleep clock_settime clone clone3 close_range cma \
	confstr copy_file_range creat delete_module dup dup2 dup3 eventfd eventfd2 \
	execl execle execlp execv execve execveat execvp exit exit_group faccessat \
	faccessat2 fadvise fallocate fanotify fchdir fchmod fchmodat fchmodat2 fchown \
	fchownat fcntl fdatasync fgetxattr finit_module flistxattr flock fmtmsg fork \
	fpathconf fremovexattr fsconfig fsetxattr fsmount fsopen fspick fstat fstatat \
	fstatfs fsync ftruncate futex futimesat get_mempolicy get_robust_list getcontext \
	getcpu getcwd getdents getdomainname getegid geteuid getgid getgroups gethostbyname_r \
	gethostid gethostname getitimer getpagesize getpgid getpgrp getpid getppid getpriority \
	getrandom getresgid getresuid getrlimit getrusage getsid gettid gettimeofday getuid \
	getxattr init_module inotify inotify_init io_cancel io_destroy io_getevents \
	io_pgetevents io_setup io_submit io_uring ioperm iopl ioprio ipc kcmp \
	keyctl kill landlock lchown lgetxattr link linkat listxattr llistxattr llseek \
	lremovexattr lseek lstat madvise mallinfo mallinfo2 mallopt mbind membarrier \
	memcmp memcpy memfd_create memset migrate_pages mincore mkdir mkdirat mknod mknodat \
	mlock mlock2 mlockall mmap modify_ldt mount_setattr move_mount move_pages mprotect \
	mq_notify mq_open mq_timedreceive mq_timedsend mq_unlink mremap mseal msync munlock \
	munlockall munmap name_to_handle_at nanosleep newuname nftw nice open \
	open_by_handle_at open_tree openat openat2 pathconf pause perf_event_open \
	personality pidfd_getfd pidfd_open pidfd_send_signal pipe pipe2 pivot_root \
	pkeys prctl pread preadv preadv2 process_madvise pselect ptrace \
	pwrite pwritev pwritev2 quotactl read readahead readdir readlink readlinkat \
	readv realpath reboot remap_file_pages removexattr rename renameat renameat2 \
	request_key rmdir rt_sigaction rt_sigprocmask rt_sigqueueinfo rt_sigsuspend \
	rt_sigtimedwait rt_tgsigqueueinfo sbrk sched_get_priority_max sched_get_priority_min \
	sched_getaffinity sched_getattr sched_getparam sched_getscheduler sched_rr_get_interval \
	sched_setaffinity sched_setattr sched_setparam sched_setscheduler sched_yield \
	seccomp set_mempolicy set_robust_list set_thread_area set_tid_address setdomainname \
	setegid setfsgid setfsuid setgid setgroups sethostname setitimer setpgid setpgrp setpriority \
	setregid setresgid setresuid setreuid setrlimit setsid settimeofday setuid setxattr \
	sgetmask sigaction sigaltstack sighold signal signalfd signalfd4 sigpending sigprocmask \
	sigrelse sigsuspend sigtimedwait sigwait sigwaitinfo sockioctl ssetmask stat statfs statvfs \
	statx stime string swapoff swapon switch symlink symlinkat sync sync_file_range syncfs \
	syscall sysconf sysctl sysfs sysinfo syslog tee tgkill time timer_create timer_delete \
	timer_getoverrun timer_gettime timer_settime timerfd times tkill truncate ulimit umask \
	umount2 uname unlink unlinkat userfaultfd ustat utils utime utimensat utimes vfork \
	vhangup vmsplice waitid waitpid write writev
# endif

include $(top_srcdir)/include/mk/generic_trunk_target.mk
