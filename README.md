Exemple basique d'une compilation + utilisation de swig 4.2.0 (Windows + MinGW)

PREREQUIS:
 - Télécharger swig sur le site officiel (.zip pour Windows), ouvrir le zip à la racine du repo
 - Renseigner la variable SWIG_DIR du Makefile avec le nom du dossier (ex: swigwin-4.2.0)
 - Configurer les variables d'environnement PYTHON_INCLUDE et PYTHON_LIB sur l'installation Python de MinGW, cf. $(SWIG_DIR)/Doc/Manual/Windows.html#Windows_python

/!\ MinGW ne prends en compte que les librairies Python en .pyd /!\

Pour tester :
$> make swig
$> python
$> import swg.example as my_wrapper
$>
