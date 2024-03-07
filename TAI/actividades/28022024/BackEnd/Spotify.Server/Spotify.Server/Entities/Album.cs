namespace Spotify.Server.Entities
{
    public class Album
    {
        public virtual int Id { get; set; }
        public virtual string Titulo { get; set; }
        public virtual string Portada { get; set; }
        public virtual int AnioLanzamiento { get; set; }
        public virtual string Descripcion { get; set; }
        public virtual Artista Artista { get; set; }
    }
}
