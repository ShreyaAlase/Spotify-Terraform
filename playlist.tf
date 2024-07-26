resource "spotify_playlist" "Bollywood" {
    name = "Bollywood"
    tracks = ["7cWnks0lsRtpAi87COOiXK"]
}

data "spotify_search_track" "lanadelrey" {
    artist = "Lana Del Rey"
}

resource "spotify_playlist" "summertimesadness" {
    name = "Summertime Sadness"
    tracks = [data.spotify_search_track.lanadelrey.tracks[0].id,
    data.spotify_search_track.lanadelrey.tracks[1].id,
    data.spotify_search_track.lanadelrey.tracks[2].id]
}