import os
import curses

if __name__ == '__main__':
    print os.environ
    os.environ["TERM"] = 'xterm-256color'
    screen = curses.initscr()
    try:
        curses.cbreak()
        pad = curses.newpad(10, 10)
        size = screen.getmaxyx()
        pad.refresh(0, 0, 0, 0, size[0] - 1, size[1] - 1)

    finally:
        curses.nocbreak()
        curses.endwin()
