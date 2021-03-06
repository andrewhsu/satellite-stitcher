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

SS_OPT:=-b
SERVER:=localhost

help:
	@echo ' afm'
	@echo ' sonoma'
	@echo ' thunderhill'
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

.PHONY: afm sonoma kart clean clean-blocks clean-strips clean-images

afm: track-buttonwillow.jpg track-sonoma.jpg track-thunderhill.jpg

sonoma: track-sonoma.jpg $(shell seq -f'track-sonoma-t%02g.jpg' -s' ' 1 11)

thunderhill: track-thunderhill.jpg $(shell seq -f'track-thunderhill-t%02g.jpg' -s' ' 1 15) track-thunderhill-t05a.jpg

kart: track-buttonwillow-kart.jpg track-sonoma-kart.jpg track-atwater-kart.jpg track-stockton-kart.jpg

track-buttonwillow.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 176070 413566 36 39 $@

track-sonoma.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167583 403846 39 35 $@

track-thunderhill.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167956 398692 32 37 $@

track-thunderhill-t01.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167971 398720 7 8 $@

track-thunderhill-t02.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167976 398721 11 8 $@

track-thunderhill-t03.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167976 398713 11 9 $@

track-thunderhill-t04.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167978 398709 4 7 $@

track-thunderhill-t05.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167975 398705 5 7 $@

track-thunderhill-t05a.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167975 398702 5 7 $@

track-thunderhill-t06.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167976 398695 5 9 $@

track-thunderhill-t07.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167970 398692 9 5 $@

track-thunderhill-t08.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167960 398692 13 5 $@

track-thunderhill-t09.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167956 398699 5 11 $@

track-thunderhill-t10.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167959 398715 7 6 $@

track-thunderhill-t11.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167961 398716 6 5 $@

track-thunderhill-t12.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167965 398715 3 6 $@

track-thunderhill-t13.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167965 398712 4 7 $@

track-thunderhill-t14.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167967 398696 6 8 $@

track-thunderhill-t15.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167970 398697 3 6 $@

track-brandshatch.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 525031 349359 42 44 $@

track-sonoma-t01.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167606 403865 5 2 $@

track-sonoma-t02.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167598 403866 6 5 $@

track-sonoma-t03.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167589 403862 8 5 $@

track-sonoma-t04.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167586 403857 5 6 $@

track-sonoma-t05.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167590 403856 8 6 $@

track-sonoma-t06.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167597 403858 7 7 $@

track-sonoma-t07.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167588 403848 7 7 $@

track-sonoma-t08.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167594 403851 11 7 $@

track-sonoma-t09.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167608 403860 8 6 $@

track-sonoma-t10.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167613 403864 7 7 $@

track-sonoma-t11.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167615 403870 6 5 $@

track-sonoma-kart.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 167615 403885 15 14 $@

track-buttonwillow-kart.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 176087 413582 12 6 $@

track-atwater-kart.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 172992 406914 8 10 $@

track-stockton-kart.jpg:
	$(CURDIR)/satellite-stitcher $(SS_OPT) $(SERVER) 171063 404680 10 5 $@

clean: clean-blocks clean-strips clean-images

clean-blocks:
	$(RM) -r blocks

clean-strips:
	$(RM) -r strips

clean-images:
	$(RM) track-*.jpg
