FROM node:10.16.0-alpine
WORKDIR /app
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/Vlaxmi0312/Node_js_Project.git
RUN npm install
EXPOSE 3000
CMD [ "node", "app.js" ]
