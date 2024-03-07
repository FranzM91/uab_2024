using Spotify.Server.Entities;

namespace Spotify.Server.Data.Contracts
{
    public interface IArtistaDao: IGenericDao<Artista>
    {
        int returnInt();
    }
}
