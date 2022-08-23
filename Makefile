
project := updipogo
fab := jlcpcb

panel.kicad_pcb: $(project).kicad_pcb panelize.json
	kikit panelize -p panelize.json $< $@

gerbers.zip: panel.kicad_pcb
	kikit fab $(fab) --no-drc $< ./
