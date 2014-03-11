# Satellite Stitcher - combines pieces of a satellite map
# Copyright 2014 Andrew Hsu
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

SERVER:=localhost

help:
	@echo ' afm'
	@echo ' kart'
	@echo ' buttonwillow.jpg'
	@echo ' sonoma.jpg'
	@echo ' thunderhill.jpg'
	@echo ' brandshatch.jpg'
	@echo ' sonoma-t01.jpg'
	@echo ' sonoma-t11.jpg'
	@echo ' buttonwillow-kart.jpg'
	@echo ' sonoma-kart.jpg'
	@echo ' atwater-kart.jpg'
	@echo ' stockton-kart.jpg'
	@echo ' clean'

.PHONY: afm kart clean clean-xy clean-l clean-i

afm: buttonwillow.jpg sonoma.jpg thunderhill.jpg

kart: buttonwillow-kart.jpg sonoma-kart.jpg atwater-kart.jpg stockton-kart.jpg

buttonwillow.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 176070 413566 36 39 $@

sonoma.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167583 403846 39 35 $@

thunderhill.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167956 398692 32 37 $@

brandshatch.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 525031 349359 42 44 $@

sonoma-t01.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167608 403865 3 3 $@

sonoma-t11.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167617 403871 3 3 $@

sonoma-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167615 403885 15 14 $@

buttonwillow-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 176087 413582 12 6 $@

atwater-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 172992 406914 8 10 $@

stockton-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 171063 404680 10 5 $@

clean: clean-xy clean-l clean-i

clean-xy:
	$(RM) x??????y??????.jpg

clean-l:
	$(RM) l??????.jpg

clean-i:
	$(RM) sonoma-t??.jpg
	$(RM) sonoma-kart.jpg
	$(RM) buttonwillow-kart.jpg
	$(RM) atwater-kart.jpg
	$(RM) stockton-kart.jpg
	$(RM) buttonwillow.jpg
	$(RM) thunderhill.jpg
	$(RM) brandshatch.jpg
	$(RM) sonoma.jpg
