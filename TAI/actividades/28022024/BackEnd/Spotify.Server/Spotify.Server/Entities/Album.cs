using System.Collections.Generic;

namespace Spotify.Server.Entities
{
    public class Album
    {
        public int IdAlbum { get; set; }
        public string Titulo { get; set; }
        public string Portada { get; set; }
        public int AnioLanzamiento { get; set; }
        public string Descripcion { get; set; }
        public Artista Artista { get; set; }
    }
}
