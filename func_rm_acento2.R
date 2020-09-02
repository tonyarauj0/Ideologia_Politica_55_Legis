#Funcao remover acentos
rm_acento<-function(str){
  # Lista de correções
  unwanted_array = list('S'='S', 's'='s', 'Z'='Z', 'z'='z', 'À'='A', 'Á'='A', 'Â'='A', 'Ã'='A', 'Ä'='A', 'Å'='A', 'Æ'='A', 'Ç'='C', 'È'='E', 'É'='E',
                        'Ê'='E', 'Ë'='E', 'Ì'='I', 'Í'='I', 'Î'='I', 'Ï'='I', 'Ñ'='N', 'Ò'='O', 'Ó'='O', 'Ô'='O', 'Õ'='O', 'Ö'='O', 'Ø'='O', 'Ù'='U',
                        'Ú'='U', 'Û'='U', 'Ü'='U', 'Ý'='Y', 'à'='a', 'á'='a', 'â'='a', 'ã'='a', 'ä'='a', 'å'='a', 'æ'='a', 'ç'='c', '§'='º', '?'='c',
                        'è'='e', 'é'='e', 'ê'='e', 'ë'='e', 'ì'='i', 'í'='i', 'î'='i', 'ï'='i', 'ð'='o', 'ñ'='n', 'ò'='o', 'ó'='o', 'ô'='o', 'õ'='o',
                        'ö'='o', 'ø'='o', 'ù'='u', 'ú'='u', 'û'='u', 'ý'='y', 'ý'='y', 'þ'='b', 'ÿ'='y', 'Æ'='A', '¢'='o' )
  
  #Vetor de caractéres à serem substituídos:
  Old=paste(names(unwanted_array), collapse='')
  
  #Vetor de caractéres novos:
  New=paste(unwanted_array, collapse='')
  
  #string Ã© a lista de palavras que a funcao vai passar
  return(chartr(Old, New, str))
}

rm_acento("lúcia")
