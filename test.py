#!/usr/bin/python
import subprocess
import timeit

def run_program(program, m, n):
    proc = subprocess.Popen(
        [program],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE
    )
    proc.communicate('{0} {1}\n'.format(m, n))
    proc.wait()

def timed_run(program, m, n):
    cmd = 'run_program("{0}", {1}, {2})'.format(program, m, n)
    return timeit.timeit(
        stmt=cmd,
        setup='from __main__ import run_program',
        number=1
    )

def test(programs, m, n):
    for name, program in programs:
        time = timed_run(program, m, n)
        print '{0},{1},{2},{3}'.format(name, m, n, time)

if __name__ == '__main__':
    programs = (
        ('c iterative', 'c/iterative'),
        ('c recursive', 'c/recursive'),
        ('ada iterative', 'ada/iterative'),
        ('ada recursive', 'ada/recursive'),
        ('fortran iterative', 'fortran/iterative'),
        ('fortran recursive', 'fortran/recursive'),
        ('python iterative', 'python/iterative.py'),
    )
    for n in range(13):
        test(programs, 3, n)
