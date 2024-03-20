using NHibernate.Criterion;
using Spotify.Server.Data.Contracts;
using Spotify.Server.Entities;
using System.Collections.Generic;
using System.Linq;

namespace Spotify.Server.Data
{
    public class ArtistaDao : GenericDao<Artista>, IArtistaDao
    {
        public List<Artista> GetAll()
        {
            var result = session.QueryOver<Artista>()
               .List().ToList();
            return result;
        }

        public List<Artista> SerachByFilter(string filter)
        {
            var result = session.QueryOver<Artista>()
                .Where(src => src.Nacionalidad.IsLike(filter))
                .List().ToList();
            return result;
        }
    }
}
