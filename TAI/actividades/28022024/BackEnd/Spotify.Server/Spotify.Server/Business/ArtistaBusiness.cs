using Spotify.Server.Data;
using Spotify.Server.Data.Contracts;
using Spotify.Server.Entities;
using System;
using System.Collections.Generic;

namespace Spotify.Server.Business
{
    public class ArtistaBusiness
    {
        public readonly IArtistaDao repositoryArtista;
        public ArtistaBusiness()
        {
            repositoryArtista = new ArtistaDao();
        }

        public List<Artista> GetAll()
        {
            return repositoryArtista.GetAll();
        }

        public Artista Save(Artista entity)
        {
            //if (repositoryArtista.existArtista(entity))
            //    throw new Exception("Nombre Artistico ya existe!");
            return repositoryArtista.Save(entity);
        }
        public void Delete(Artista entity)
        {
            repositoryArtista.Delete(entity);
        }

        public List<Artista> searchByFilter(string filter)
        {
            return repositoryArtista.SerachByFilter(filter);
        }
    }
}
