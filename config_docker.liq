settings.log.file.path := "/var/log/stream-generator.log"
settings.log.stdout := true
settings.log.level := 4

settings.init.allow_root := true

alsa_input = environment.get("ALSA_INPUT")
stream_host = environment.get("STREAM_HOST")
stream_port = int_of_string(environment.get("STREAM_PORT"))
stream_password = environment.get("STREAM_PASSWORD")
meta_name = environment.get("META_NAME")
meta_description = environment.get("META_DESCRIPTION")
meta_genre = environment.get("META_GENRE")
meta_url = environment.get("META_URL")
mount_prefix = environment.get("MOUNT_PREFIX")
