%include "config.liq"

live = input.alsa(device=alsa_input)

output.icecast(
    %vorbis.cbr(samplerate=44100, channels=2, bitrate=128),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [Vorbis 128 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ ".ogg", live)
output.icecast(
    %vorbis.cbr(samplerate=44100, channels=2, bitrate=64),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [Vorbis 64 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ "-lb.ogg", live)
output.icecast(
    %vorbis.cbr(samplerate=44100, channels=2, bitrate=320),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [Vorbis 320 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ "-hq.ogg", live)

output.icecast(
    %fdkaac(channels=2, samplerate=44100, bitrate=128, aot="mpeg4_aac_lc", transmux="adts"),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [AAC 128 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ ".aac", live)
output.icecast(
    %fdkaac(channels=2, samplerate=44100, bitrate=64, aot="mpeg4_aac_lc", transmux="adts"),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [AAC 64 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ "-lb.aac", live)
output.icecast(
    %fdkaac(channels=2, samplerate=44100, bitrate=320, aot="mpeg4_aac_lc", transmux="adts"),
    host=stream_host, port=stream_port, password=stream_password,
    name=meta_name ^ " [AAC 320 kbps]",
    description=meta_description, genre=meta_genre,
    url=meta_url, mount=mount_prefix ^ "-hq.aac", live)
