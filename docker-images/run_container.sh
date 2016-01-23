sudo docker run \
  -it --rm \
  -v $HOME/airflow-deployment/docker-images/yolo_conf:/home/dev/airflow_config \
  -v $HOME/dagger:/home/dev/dagger \
  -v $HOME/test_plushy:/home/dev/plushy \
  -p 8005:8005 \
  guangyang/airflow-webserver
