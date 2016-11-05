from sympy import *


t = Symbol('t')
x0 = Symbol('x0')
y0 = Symbol('y0')

x = 2*cos(t)-cos(2*t)

dx = diff(x,t)

ddx = diff(dx,t)

y = 2*sin(t)-sin(2*t)

dy = diff(y,t)

ddy = diff(dy,t)

f = (x - x0)*dx + (y -y0)*dy 

df = (dx)**2+(x-x0)*ddx+(dy)**2+(y-y0)*ddy

solve(Eq(x,2.134141),t)

