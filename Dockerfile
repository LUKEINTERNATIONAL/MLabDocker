# Use the official Ruby image with version 3.2.0
FROM ruby:3.2.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["rails", "server", "-b", "0.0.0.0"]
