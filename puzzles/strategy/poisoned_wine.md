# Poisoned wine bottles

A king has 1000 bottles of wine, and is to serve 999 of them at a banquet in 24
hours. The problem is that 1 of the bottles is poisoned, and he has to figure
out which it is before the banquet. He has 10 servants willing to sacrifice
their lives to test the bottles. The poison takes 24 hours to take effect, so
the king has only one shot at a test to single out the poisoned bottle. The
poison is very strong and even when diluted will still kill within the time
period.

How can he use his ten servants to find the single poisoned bottle out
of 1000 bottles?

{::nomarkdown}
<label for="{{ include.id }}"></label>
<input type="checkbox" class="solution" id="{{ include.id }}">
{:/}
<div>

Number the bottles 0 to 999. Number the servants 0 to 9. Each servant drinks
from bottles whose number has its $$i$$th bit set to 1.

After waiting for 24 hours, see which servants have died. Discard the bottle
whose $$i$$th bit is 1 if the $$i$$th servant died, but 0 otherwise. This
uniquely identifies the bottle.

In general this can be done for  $$ n $$  bottles as long as the king has at least
$$ \lceil \log_2 n \rceil $$  servants.

</div>
