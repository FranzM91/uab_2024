using Spotify.Server.Business;
using System.ComponentModel;
using System.Web.Http;

namespace Spotify.Api.Controllers
{
    [RoutePrefix("api/artista")]
    public class ArtistaController : ApiController
    {
        private readonly ArtistaBusiness artistaBusiness;
        public ArtistaController()
        {
            artistaBusiness = new ArtistaBusiness();
        }

        [HttpPost]
        [Route("getall")]
        public IHttpActionResult SearchArtista()
        {
            var result = artistaBusiness.GetAll();
            return Ok(result);
        }

        [HttpPost]
        [Route("getbyartista")]
        public IHttpActionResult GetByArtista()
        {
            return Ok("Artistas");
        }
    }
}
