import axios from "axios";
import React, { useState } from "react";
import { TextInput, FileInput, Label,Textarea,Button } from "flowbite-react";
import { useNavigate } from "react-router-dom";



    export default function AddNewListing() {

      const navigate = useNavigate();

      const handleSubmit = e => {
        // Prevent the default submit and page reload
        e.preventDefault()
        // Handle validations
        const formData = new FormData();
        if(photo1){formData.append("photo1", photo1)};
        if(photo2){formData.append("photo2", photo2)};
        if(photo3){formData.append("photo3", photo3)};
        formData.append("name", name);
        formData.append("address", address);
        formData.append("description", description);

        axios
          .post("api/version1/flats/", formData, {
            headers: {
              "Content-Type": "multipart/form-data",
            },
          })
          .then(response => {
            console.log(response.data)   
            navigate(`/+${response.data.id}`); // Omit optional second argument       
          }).catch(function (error) {
            console.log(error);
            
          });
          
      }

 
      const [name, setName] = useState("")
      const [address, setAddress] = useState("")
      const [description, setDescription] = useState("")
      const [photo1, setPhoto1]= useState(null)
      const [photo2, setPhoto2]= useState(null)
      const [photo3, setPhoto3]= useState(null)

      return (
        <form className="flex flex-col gap-4" onSubmit={handleSubmit}>
          <div>
            <div className="mb-2 block">
              <Label htmlFor="name" value="Title of Listing" />
            </div>
            <TextInput
              id="name"
              type="name"
              placeholder="Industrial Loft"
              required={true}
              value={name}
              onChange={e => setName(e.target.value)}
            />
          </div>
          <div>
            <div className="mb-2 block">
              <Label htmlFor="address" value="Listing Address" />
            </div>
            <TextInput id="address" type="address" required={true}  value={address}
              onChange={e => setAddress(e.target.value)}/>
          </div>
          <div id="textarea">
            <div className="mb-2 block">
              <Label htmlFor="description" value="Listing Description" />
            </div>
            <Textarea
              id="description"
              placeholder="This large 4 bedroom house..."
              required={true}
              rows={4}
              value={description}
              onChange={e => setDescription(e.target.value)}/>
          </div>
          <div id="fileUpload">
            <div className="mb-2 block">
              <Label htmlFor="file1" />
            </div>
            <FileInput
              id="file1"
              helperText="Pictures of the listing"
              type="file" accept="image/*" name={photo1}
              onChange={e => setPhoto1(e.target.files[0])}
            />
          </div>
          <div id="fileUpload">
            <div className="mb-2 block">
              <Label htmlFor="file2" value="Upload file" />
            </div>
            <FileInput
              id="file2"
              helperText="Pictures of the listing"
              type="file" accept="image/*" name={photo2}
              onChange={e => setPhoto2(e.target.files[0])}
            />
          </div>
          <div id="fileUpload">
            <div className="mb-2 block">
              <Label htmlFor="file3" value="Upload file" />
            </div>
            <FileInput
              id="file3"
              helperText="Pictures of the listing"
              type="file" accept="image/*" name={photo3}
              onChange={e => setPhoto3(e.target.files[0])}
            />
          </div>
          <Button type="submit">Submit</Button>
        </form>
      );
    }