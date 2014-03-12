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
	@echo ' track-buttonwillow.jpg'
	@echo ' track-sonoma.jpg'
	@echo ' track-thunderhill.jpg'
	@echo ' track-brandshatch.jpg'
	@echo ' track-sonoma-t{01..11}.jpg'
	@echo ' track-buttonwillow-kart.jpg'
	@echo ' track-sonoma-kart.jpg'
	@echo ' track-atwater-kart.jpg'
	@echo ' track-stockton-kart.jpg'
	@echo ' clean'

.PHONY: afm kart clean clean-blocks clean-strips clean-images

afm: track-buttonwillow.jpg track-sonoma.jpg track-thunderhill.jpg

kart: track-buttonwillow-kart.jpg track-sonoma-kart.jpg track-atwater-kart.jpg track-stockton-kart.jpg

track-buttonwillow.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 176070 413566 36 39 $@

track-sonoma.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167583 403846 39 35 $@

track-thunderhill.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167956 398692 32 37 $@

track-brandshatch.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 525031 349359 42 44 $@

track-sonoma-t01.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167606 403865 5 2 $@

track-sonoma-t02.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167598 403866 6 5 $@

track-sonoma-t03.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167589 403862 8 5 $@

track-sonoma-t04.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167586 403857 5 6 $@

track-sonoma-t05.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167590 403856 8 6 $@

track-sonoma-t06.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167597 403858 7 7 $@

track-sonoma-t11.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167617 403871 3 3 $@

track-sonoma-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 167615 403885 15 14 $@

track-buttonwillow-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 176087 413582 12 6 $@

track-atwater-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 172992 406914 8 10 $@

track-stockton-kart.jpg:
	$(CURDIR)/satellite-stitcher.sh $(SERVER) 171063 404680 10 5 $@

clean: clean-blocks clean-strips clean-images

clean-blocks:
	$(RM) -r blocks

clean-strips:
	$(RM) -r strips

clean-images:
	$(RM) track-*.jpg
