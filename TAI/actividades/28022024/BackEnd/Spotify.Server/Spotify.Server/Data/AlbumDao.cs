using Spotify.Server.Data.Contracts;
using Spotify.Server.Entities;
using System.Collections.Generic;
using System.Linq;

namespace Spotify.Server.Data
{
    public class AlbumDao: GenericDao<Album>, IAlbumDao
    {
        public List<Album> GetAll()
        {
            var result = session.QueryOver<Album>()
               .List().ToList();
            return result;
        }
    }
}
