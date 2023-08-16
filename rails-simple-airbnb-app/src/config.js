const LOCAL_API_BASE_URL = "http://localhost:4000"; // Set to your local Rails API address
const PRODUCTION_API_BASE_URL = "https://simple-airbnb-postgres-app-2kvm.onrender.com/"; // Set to your production Rails API domain

let API_BASE_URL;

if (process.env.NODE_ENV === 'production') {
  API_BASE_URL = PRODUCTION_API_BASE_URL;
} else {
  API_BASE_URL = LOCAL_API_BASE_URL;
}

export { API_BASE_URL };