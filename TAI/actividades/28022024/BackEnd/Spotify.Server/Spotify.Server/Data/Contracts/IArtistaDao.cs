using Spotify.Server.Entities;
using System.Collections.Generic;

namespace Spotify.Server.Data.Contracts
{
    public interface IArtistaDao: IGenericDao<Artista>
    {
        List<Artista> GetAll();
        List<Artista> SerachByFilter(string filter);
    }
}
