using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSSTestWebApp
{
    public class ResponseRepository
    {
        private static ResponseRepository repository = new ResponseRepository();
        private List<StudentResponse> responses = new List<StudentResponse>();

        public static ResponseRepository GetRepository()
        {
            return repository;
        }

        public IEnumerable<StudentResponse> GetAllResponses()
        {
            return responses;
        }

        public void AddResponse(StudentResponse response)
        {
            responses.Add(response);
        }
    }
}