using Spotify.Server.Data;
using Spotify.Server.Data.Contracts;
using Spotify.Server.Entities;

namespace Spotify.Server.Business
{
    public class AlbumBusiness
    {
        public readonly IAlbumDao repository;
        public AlbumBusiness()
        {
            repository = new AlbumDao();
        }
        public Album GetById(int entityId)
        {
            return repository.GetById(entityId);
        }
        public Album Save(Album entity)
        {
            return repository.Save(entity);
        } 
    }
}
