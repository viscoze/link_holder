class LinkHolder extends React.Component {
  render () {
    return (
      <div className="LinkHolder">
        <div className="link-holder-title"></div>
        <div className="links">
          {
            this.props.links.map(({ title, url }, index) => (
              <Link title={title} url={url} />
            ));
          }
        </div>
      </div>
    );
  }
}
