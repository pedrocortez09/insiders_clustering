set data=%date:~6,4%%date:~3,2%%date:~0,2%

set path='C:\Users\Pedro\repos\pa005_insiders_clustering\insiders_cluster'
set path_to_envs='C:\Users\Pedro\repos\pa005_insiders_clustering\pa_insiders_env\Scripts'

%path_to_envs%\papermill %path%\src\models\c9-phc-deploy %path%\reports\c9-phc-deploy-%data%.ipynb