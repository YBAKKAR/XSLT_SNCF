from lxml import etree

parser = etree.XMLParser()
xml_input = etree.parse(open('question-1.xml','r'), parser)
xslt_root = etree.parse(open('question-1.xsl','r'), parser)
transform = etree.XSLT(xslt_root)
document = transform(xml_input)

document.write('ponctualite-mensuelle-transilien.xhtml', pretty_print = True, encoding="utf-8")