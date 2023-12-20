all: mmoda-schema.pdf mmoda-schema.png

mmoda-schema.pdf: mmoda-schema.plantuml
	plantuml -tpdf mmoda-schema.plantuml

mmoda-schema.png: mmoda-schema.plantuml
	plantuml -tpng mmoda-schema.plantuml
