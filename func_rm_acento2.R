#Funcao remover acentos
rm_acento<-function(str){
  # Lista de corre��es
  unwanted_array = list('S'='S', 's'='s', 'Z'='Z', 'z'='z', '�'='A', '�'='A', '�'='A', '�'='A', '�'='A', '�'='A', '�'='A', '�'='C', '�'='E', '�'='E',
                        '�'='E', '�'='E', '�'='I', '�'='I', '�'='I', '�'='I', '�'='N', '�'='O', '�'='O', '�'='O', '�'='O', '�'='O', '�'='O', '�'='U',
                        '�'='U', '�'='U', '�'='U', '�'='Y', '�'='a', '�'='a', '�'='a', '�'='a', '�'='a', '�'='a', '�'='a', '�'='c', '�'='�', '?'='c',
                        '�'='e', '�'='e', '�'='e', '�'='e', '�'='i', '�'='i', '�'='i', '�'='i', '�'='o', '�'='n', '�'='o', '�'='o', '�'='o', '�'='o',
                        '�'='o', '�'='o', '�'='u', '�'='u', '�'='u', '�'='y', '�'='y', '�'='b', '�'='y', '�'='A', '�'='o' )
  
  #Vetor de caract�res � serem substitu�dos:
  Old=paste(names(unwanted_array), collapse='')
  
  #Vetor de caract�res novos:
  New=paste(unwanted_array, collapse='')
  
  #string é a lista de palavras que a funcao vai passar
  return(chartr(Old, New, str))
}

rm_acento("l�cia")
