# Instalación

[RubyLang](https://www.ruby-lang.org/es/) es en sitio completo sobre Ruby donde podremos encontrar instaladores, documentación, gemas (bibliotecas), comunidad (blogs, podcasts, videos, etc.), noticias y más.

## Instalación en Windows

Para instalar Ruby en Windows, debemos ir a esta [sección de descargas](https://www.ruby-lang.org/es/documentation/installation/#rubyinstaller) y descargar el instalador. También puedes visitar el sitio oficial del instalador que es [RubyInstaller.org](https://rubyinstaller.org/).

Dentro de la página oficial del instalador podemos encontrar las últimas versiónes de Ruby como la versión 3.2.2 que es la última versión estable al momento de escribir este documento y la que usaremos durante el curso.

## Instalación en Linux (Debian o Ubuntu)

En la sección de [apt (Debian o Ubuntu)](https://www.ruby-lang.org/es/documentation/installation/#apt) podemos seguir los pasos listados ejecutando cada comando para poder instalar Ruby. Lo mismo podrás hacer para otras distribuciones de Linux como CentOS, Fedora, Arch Linux, Gentoo, etc. ahí mismo en esa sección.

## Instalación en macOS

Para macOS podemos ir a esta sección de [descargas](https://www.ruby-lang.org/es/documentation/installation/#homebrew) y seguir los pasos listados para instalar Ruby.

## Instalación usando rbenv (mi preferida)

Rbenv es un manejador de versiones para Ruby para sistemas basado en Unix. Es muy útil ya que podemos instalar y cambiar fácilmente entre diferentes versiones de Ruby. Este es el [Github](https://github.com/rbenv/rbenv) oficial de rbenv.


```bash
# Instalar rbenv para macOS usando brew
brew install rbenv ruby-build

# Instalar rbenv para Debian/Ubuntu usando apt
sudo apt install rbenv

# Inicializar rbenv
rbenv init

## Cierra la terminal y vuelve a abrirla para que rbenv se cargue

# Instalar la versión deseada de Ruby
rbenv install 3.2.2

# Establecer esa versión como la global/default
rbenv global 3.2.2

# Verificar la versión de Ruby
ruby -v

# Rehash para actualizar el PATH y usar la versión de Ruby instalada
# ejecutar en caso de que el comando anterior no muestre la versión de Ruby
rbenv rehash
```
