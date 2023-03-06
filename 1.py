import docx

document = docx.Document('1.doc')
text = '\n'.join([paragraph.text for paragraph in document.paragraphs])
print(text)