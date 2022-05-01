import spacy

# load the deep learning dataset
nlp = spacy.load('en_core_web_sm')


blog_id = 8
blog_tilte = "How to built a kernel in my Virtural Machine build build build?"
blog_content = "I am trying to build a kernel in my virtual machine, I used Mac, my virtual machine is Linux"

doc_title = nlp(blog_tilte)
doc_content = nlp(blog_content)

token_dict = {} # {name:occurance_times}

print(blog_tilte)

for token in doc_content:
  if not (token.is_punct or token.is_stop): # if not a punctuation or a stop word
    lemma_token = token.lemma_ # transform it to normal form (lemma)
    if lemma_token in token_dict:
      token_dict[lemma_token] += 1
    else:
      token_dict[lemma_token] = 1 

print(token_dict)