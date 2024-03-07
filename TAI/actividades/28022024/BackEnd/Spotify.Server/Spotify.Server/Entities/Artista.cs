using System;

namespace Spotify.Server.Entities
{
    public class Artista
    {
        public virtual int Id { get; set; }
        public virtual string NombreArtistico { get; set; }
        public virtual string Nacionalidad { get; set; }
        public virtual DateTime FechaNacimiento { get; set; }
        public virtual string GeneroMusical { get; set; }
        public virtual string Genero { get; set; }
    }
}
