# O R possui pacotes básicos já baixados e carregados.
# Tem pacotes já baixados mas que precisam ser carregados
# Tem pacotes que precisam ser baixados e carregados

# http://cran.rstudio.com/

# Instalando pacote
install.packages("argo")

# Carregando pacote
library(argo)

# Baixar pacotes caso ainda não estejam baixados
if(!require(argo)) install.packages(argo)

??argo

# Remover pacote
remove.packages("argo")