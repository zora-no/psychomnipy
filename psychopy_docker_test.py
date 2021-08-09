#from pyglet.gl import *
from psychopy import visual
from psychopy import core
import random


# define monitor
SCREEN = visual.Window(size=(1280, 800), units='pix', color=(-1,-1,-1))

# define target strings and create psychopy stimulus
target1_strings = ['OXXO', 'XOOX']
target1 = visual.TextStim(SCREEN)

# show stimulus for 0.5 seconds
def displayT1():
    target1.text = target1_strings[0] if random.random() > .5 else target1_strings[1]
    target1.draw()
    SCREEN.flip()
    return target1.text

textT1 = displayT1()
core.wait(0.5)

# flip screen and close window
SCREEN.flip()
SCREEN.close()
